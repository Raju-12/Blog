<template>
	<div>
		 <section class="content">
      <div class="container-fluid">
        <div class="row justify-content-around">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Post List</h3>
                <div class="card-tools">
                	<button class="btn btn-primary">
                		<router-link to="/add-post" style="color:#ffff">Add New Post</router-link>
                	</button>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example2" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>
                        <select value="" id="" v-model="select" @change="deleteSelected">
                            <option>Select</option>
                            <option>Delete All</option>
                        </select><br>
                        <input type="checkbox" @click.prevent="selectAll" v-model="all_select">
                        <span v-if="all_select==false">Check All</span>
                        <span v-else>Uncheck All</span>
                    </th>
                    <th>SL:</th>                  
                    <th>User</th>
                    <th>Category</th>
                    <th>Title</th>
                    <th>Description</th>
                    <th>Photo</th>
                    <th>Actions</th>
                    
                  </tr>
                  </thead>
                  <tbody>
                  <tr v-for="(post,index) in allpost">
                    <td>
                        <input type="checkbox" v-model="postItem" :value="post.id">
                    </td>
                    <td>{{index+1}}</td>
                    <td v-if="post.user">{{post.user.name}}</td>
                    <td v-if="post.category">{{post.category.cat_name}}</td>
                    <td>{{post.title | shortlength(20,"...")}}</td>
                    <td>{{post.description | shortlength(30,"...")}}</td>
                    <td><img :src="ourImage(post.photo)" width="50" height="50" ></td>
                    <td>
                    	
                      <router-link :to="`edit-post/${post.id}`">Edit</router-link>
                    	<a href="" @click.prevent="deletePost(post.id)">Delete</a>
                     </td>
                    
                  </tr>
                  
                  </tbody>
                 
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
	</div>

</template>
<script>
	export default{
	name:"List",
  data(){
      return{
          postItem:[],
          select:'',
          all_select:false
      }
  },
	mounted(){
		this.$store.dispatch('getAllPost')
	},
	computed:{
        allpost(){
          return this.$store.getters.getAllPost
          }
	},
	methods:{
      ourImage(img){

        return "uploadimage/"+img;
         
      },
      deletePost(id){
          axios.get('/delete/'+id)
          .then((response)=>{
               this.$store.dispatch('getAllPost')
               Toast.fire({
                  icon: 'success',
                  title: 'Post deleted successfully'
              })
              .catch(()=>{

              })

          })

      },
      deleteSelected(){
        axios.get('/deletepost/'+this.postItem)
        .then((response)=>{
               this.postItem=[] 
               this.$store.dispatch('getAllPost')
               Toast.fire({
                  icon: 'success',
                  title: 'Post deleted successfully'
              })
              .catch(()=>{

              })

          })
      },
      selectAll(){
          if(this.all_select==false){
          this.all_select=true
          for(var post in this.allpost){
              this.postItem.push(this.allpost[post].id)
          }
          }else{
              this.all_select=false
              this.postItem=[]
          }
          
      }

	}
	}
</script>

<style scoped>
</style>