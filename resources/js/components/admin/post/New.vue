<template>
	 <section class="content">
      <div class="container-fluid">
        <div class="row justify-content-around">
          <!-- left column -->
          <div class="col-md-10">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Add New Post</h3>
              </div> 
              
               <form role="form" enctype="multipart/form-data" @submit.prevent="addnewPost()" >
                <div class="card-body">
                  

                  <div class="form-group">
                    <label for="postId">Add New Post</label>
                    <input type="text" class="form-control" id="postId" v-model="form.title" name="title" :class="{'is-invalid':form.errors.has('title')}" placeholder="Add New Post">
                    <has-error :form="form" field="title"></has-error>
                  </div>
                  <div class="form-group">
                    <label for="descriptionId">Add New Description</label>

                    <textarea class="form-control" id="descriptionId" v-model="form.description" name="description" :class="{'is-invalid':form.errors.has('description')}" placeholder="New Post"></textarea>
                     <has-error :form="form" field="description"></has-error>
                  </div>
                  <div class="form-group">
                    <label>Select</label>
                    	<select class="form-control" :class="{'is-invalid':form.errors.has('cat_id')}" v-model="form.cat_id">
                    		<option disabled value="">Select One</option>
                    		<option :value="category.id" v-for="category in getallCategory">{{category.cat_name}}</option>
                    	</select>
                    <has-error :form="form" field="cat_id"></has-error>
                  </div>

                  <div class="form-group">
                   <input @change=changePhoto($event) type="file" name="photo" :class="{'is-invalid':form.errors.has('photo')}">
                   <img :src="form.photo" style="width:50px; height:50px;">
                    <has-error :form="form" field="photo"></has-error>
                  </div>
                  
                 
                </div>
              

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Save</button>
                </div>
              </form>
            </div>
            <!-- /.card -->

            
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!--/.col (right) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>

</template>
<script>
	export default{
	name:"List",
		data(){
			return {
				form: new Form({
					title:[],
					description:[],
					cat_id:[],
					photo:[]

				})
			}
		},
		mounted(){
			 this.$store.dispatch("allCategory")
		},
		computed:{
		getallCategory(){
          	return this.$store.getters.getCategory
          }

		},
		methods:{
    changePhoto(event){
      let file=event.target.files[0];
      console.log(file)
        if(file.size>1048576){

         Swal.fire({
              icon: 'error',
              title: 'Oops...',
              text: 'Something went wrong!',
              footer: '<a href>Why do I have this issue?</a>'
            })

        }else{

         let reader=new FileReader();
        reader.onload= event =>{
        this.form.photo=event.target.result
        console.log(event.target.result)
      };
      reader.readAsDataURL(file);

        }
     
			
		},
    addnewPost(){
       
        this.form.post('/savepost')
            .then((response)=>{
               this.$router.push('/post-list')
               Toast.fire({
                  icon: 'success',
                  title: 'Post Added successfully'
              })

            })
            .catch(()=>{

            })
    }
    }
	}
</script>

<style scoped>
</style>