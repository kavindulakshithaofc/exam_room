<template>
  <div class="main-questions">
    <div class="myQuestion" v-for="(question, index) in questions">
      <div class="row">
        <div class="col-md-12">
          <blockquote style="display: flex; justify-content: space-between;align-items: center;">
            Total Questions &nbsp;&nbsp;{{ index+1 }} / {{questions.length}}
          <div :id="'light-'+index" style="width: 40px; height: 40px; border-radius: 50%; background-color: green;"></div>
          </blockquote>
          <h2 class="question">Q. &nbsp;{{question.question}}</h2>
          

          <!-- <div class="row" v-if="question.code_snippet !== null">
            <div class="col-md-10">
              <pre class="code">
                {{question.code_snippet}}
              </pre>
            </div>
          </div> -->

          <!-- <div class="row" v-if="question.answer_exp !== null">
            <div class="col-md-10">
                <blockquote>
                    <span style="font-size:14px;">Answer Explanation</span>
                    <br>
                    {{ question.answer_exp }}
                </blockquote>
            </div>
          </div> -->

          <form v-bind:id="'myform'+ index" class="myForm" action="/quiz_start" v-on:submit.prevent="createQuestion(question, auth.id, index)" method="post">
            <input required="" class="radioBtn" v-bind:id="'radio'+ index + 0" type="radio" v-model="question.user_answer" value="A" aria-checked="false"> <span>{{question.a}}</span><br>

            <div v-if="question.a_file != null">
            <img :src="'../images/questions/' + question.a_file" >
            </div>
            <input required="" class="radioBtn" v-bind:id="'radio'+ index+1" type="radio" v-model="question.user_answer" value="B" aria-checked="false"> <span>{{question.b}}</span><br>
            <div v-if="question.b_file != null">
            <img :src="'../images/questions/' + question.b_file" >
            </div>
            <input required="" class="radioBtn" v-bind:id="'radio'+ index+2" type="radio" v-model="question.user_answer" value="C" aria-checked="false"> <span>{{question.c}}</span><br>
            <div v-if="question.c_file != null">
            <img :src="'../images/questions/' + question.c_file" >
            </div>
            <input required="" class="radioBtn" v-bind:id="'radio'+ index+3" type="radio" v-model="question.user_answer" value="D" aria-checked="false"> <span>{{question.d}}</span><br>
            <div v-if="question.d_file != null">
            <img :src="'../images/questions/' + question.d_file" >
            </div>
            <div v-if="question.e != null">
             <input required="" class="radioBtn" v-bind:id="'radio'+ index+4" type="radio" v-model="question.user_answer" value="E" aria-checked="false"> <span>{{question.e}}</span><br>
             <div v-if="question.e_file != null">
            <img :src="'../images/questions/' + question.e_file" >
            </div>
             </div>

              <div v-if="question.f != null">
                <input class="radioBtn" v-bind:id="'radio'+ index+5" type="radio" v-model="question.user_answer" value="F" aria-checked="false"> <span>{{question.f}}</span><br>
                <div v-if="question.f_file != null">
                  <img :src="'../images/questions/' + question.f_file" >
                </div>
              </div>

            <div class="row">
              <div class="col-md-6 col-xs-8 flex">
                <button type="submit" class="btn btn-wave btn-block nextbtn">Next</button>
              </div>
            </div>
            <div style="display: flex; padding-top: 50px;">
              <div v-for="(q, page) in questions">
                <button type="button" :class="page === index ? 'btn-lg' : 'btn'" @click="changePage(page)">{{ page + 1 }}</button>
              </div>
            </div>
          </form>
        </div>
        <div class="col-md-6">
          <div class="question-block-tabs" v-if="question.question_img != null || question.question_video_link != null || question.question_audio != null">
            <ul class="nav nav-tabs tabs-left">
              <li v-if="question.question_img != null" class="active"><a :href="'#image'+(index+1)" data-toggle="tab">Question Image</a></li>
              <li v-if="question.question_video_link != null"><a :href="'#video'+(index+1)" data-toggle="tab">Question Video</a></li>
               <li v-if="question.question_audio != null"><a :href="'#audio'+(index+1)" data-toggle="tab">Question Audio</a></li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane fade in active" :id="'image'+(index+1)" v-if="question.question_img != null">
                <div class="question-img-block">
                  <img :src="'../images/questions/'+question.question_img" class="img-responsive" alt="question-image">
                </div>
              </div>
              <div class="tab-pane fade" :id="'video'+(index+1)" v-if="question.question_video_link != null">
                <div class="question-video-block">
                  <h3 class="question-block-heading">Question Video</h3>
                  <iframe :id="'yui'+(index+1)" width="460" height="345" :src="question.question_video_link" frameborder="0" allowfullscreen></iframe>
                </div>
              </div>
              <div class="tab-pane fade" :id="'audio'+(index+1)" v-if="question.question_audio != null">
                <div class="question-video-block">
                  <h3 class="question-block-heading">Question Audio</h3>
                  <audio controls :id='`xyz${index+1}`' width="460" height="345"  >
                    <source :src="question.question_audio" type="audio/mp3">
                  </audio>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {

  props: ['topic_id', 'current_attempt'],

  data () {
    return {
      questions: [],
      answers: [],
      per_question_time: 5_000,
      result: {
        question_id: '',
        answer: '',
        user_id: '',
        user_answer: null,
        topic_id: '',
		current_attempt: 1
      },
      auth: [],
    }
  },

  created () {
  console.log('topic_id', this.$props.topic_id)
    this.fetchQuestions();

  },

  methods: {

    fetchQuestions() {
      this.$http.get(`${this.$props.topic_id}/quiz/${this.$props.topic_id}`).then(response => {
        this.questions = response.data.questions;
        this.auth = response.data.auth;
        
        $('#light-0').css('background-color','green')
          setTimeout(() => {
            $('#light-0').css('background-color','red')
          }, this.per_question_time);
      }).catch((e) => {
        console.log(e)
      });
    },

	changePage(page) {
		$('.myQuestion').removeClass('active');
		$('.myQuestion').eq(page).addClass('active');
    $('#light-'+page).css('background-color','green')
    setTimeout(() => {
      $('#light-'+page).css('background-color','red')
    }, 5000);
	},

    createQuestion(question, user_id,page) {
      this.result.question_id = question.id;
      this.result.answer = question.answer;
      this.result.user_id = user_id;
      this.result.user_answer = question.user_answer ?? 0;
      this.result.current_attempt = this.$props.current_attempt;
      this.result.topic_id = this.$props.topic_id;
      console.log(this.result);
      this.$http.post(`${this.$props.topic_id}/quiz`, this.result).then((response) => {
        console.log('request completed');
        console.log('request completed', this.result);
        $('#light-'+(page+1)).css('background-color','green')
        setTimeout(() => {
          $('#light-'+(page+1)).css('background-color','red')
        }, this.per_question_time);
      }).catch((e) => {
        console.log(e);
      });
    }
  }
}
</script>
