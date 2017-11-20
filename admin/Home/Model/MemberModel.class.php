<?php
namespace Home\Model;
use Think\Model;
/**
* 成员数据库管理
*/
class MemberModel extends Model{
	/**
	* 函数用途描述
	* @param: variable
	* @return:
	*/
	public  function GetAllStarMes(){
		return  $this->where('is_star=1')->select();

	}
	public  function GetTenStarMes(){
		return  $this->where('is_star=1')->limit(10)->select();

	}
	/**
	* 添加成员
	* @param: variable
	* @return:
	*/
	public function AddMemberHandle(){
		$arr=array(
				'mem_name'=>$_POST['mem_name'],
				'sex'=>$_POST['sex'],
				'student_no'=>$_POST['student_no'],
				'study_direction_id'=>$_POST['study_direction_id'],
				'member_type_id'=>$_POST['member_type_id'],
				'phone_num'=>$_POST['phone_num'],
				'e_mail'=>$_POST['e_mail'],
				'qq'=>$_POST['qq'],
				'have_study_direction'=>$_POST['have_study_direction'],
				'is_new'=>$_POST['is_new'],
				'working_place'=>$_POST['working_place'],
				'salary'=>$_POST['salary'],
				'grade'=>$_POST['grade'],
				'after_project'=>$_POST['after_project'],
				'image'=>$_POST['image'],
				'is_star'=>$_POST['is_star'],

		);
		$res=$this->add($arr);
		if($res){
			return 1;
		}else{
			return -1;
		}
	}
	/**
	* 获取新成员信息
	* @param: variable
	* @return:
	*/
	public function GetNewMember(){
		return $this->where('is_new=1')->select();
	}
	/**
	* 修改新成员信息
	* @param: variable
	* @return:
	*/
	public function ModifyNewMember($mem_id){
		$sql="select * from tp_member where mem_id={$mem_id}";
		return $this->query($sql);
	}
	/**
	* 修改新成员信息确认
	* @param: variable
	* @return:
	*/
	public function ModifyMewMemberHandle(){
		$arr=array(
				'mem_name' => $_POST['mem_name'],
				'sex' => $_POST['sex'],
				'student_no' => $_POST['student_no'],
				'study_direction_id' => $_POST['study_direction_id'],
				'member_type_id' => $_POST['member_type_id'],
				'image' => $_POST['image'],
				'e_mail' => $_POST['e_mail'],
				'qq' => $_POST['qq'],
				'have_study_direction' => $_POST['have_study_direction'],
				'is_new' => $_POST['is_new'],
				'detail_info' => $_POST['detail_info'],

		);
		$arr1=array(
				'mem_name' => $_POST['mem_name'],
				'sex' => $_POST['sex'],
				'student_no' => $_POST['student_no'],
				'study_direction_id' => $_POST['study_direction_id'],
				'member_type_id' => $_POST['member_type_id'],

				'e_mail' => $_POST['e_mail'],
				'qq' => $_POST['qq'],
				'have_study_direction' => $_POST['have_study_direction'],
				'is_new' => $_POST['is_new'],
				'detail_info' => $_POST['detail_info'],

		);
		//dump($_POST);
		if(!empty($_POST['image'])){
		$res=$this->where('mem_id='.$_POST['mem_id'])->save($arr);
		}else{
		$res=$this->where('mem_id='.$_POST['mem_id'])->save($arr1);
		}
		//dump($res);
		if($res){
			return 1;
		}else{
			return -1;
		}
	}
	/**
	 * 删除成员
	 * @param: variable
	 * @return:
	 */
	public function DelMember($mem_id){
		$res=$this->where('mem_id='.$mem_id)->delete();
		if($res){
			return 1;
		}else{
			return -1;
		}
	}
	/**
	 * 获取实习组成员信息
	 * @param: variable
	 * @return:
	 */
	public function GetTrainMember(){
		$sql="select * from tp_member where member_type_id=1";
		return $res=$this->query($sql);
	}
	public function GetTwoTrainMember(){
		$sql="select * from tp_member where member_type_id=1 limit 2";
		return $res=$this->query($sql);
	}

	/**
	 *获取所有测试组成员信息
	 * @param: variable
	 * @return:
	 */
	public function GetTestMember(){
		return $res=$this->where('member_type_id=2')->select();
	}
	public function GetTwoTestMember(){
		return $res=$this->where('member_type_id=2')->limit(3)->select();
	}
	/**
	 * 修改成员信息
	 * @param: variable
	 * @return:
	 */
	public function ModifyMember($mem_id){


		return $res=$this->where('mem_id='.$mem_id)->select();

	}
	/**
	 * 修改信息确认
	 * @param: variable
	 * @return:
	 */
	public function ModifyMemberHandle(){
		$arr=array(
				'mem_name' => $_POST['mem_name'],
				'sex' => $_POST['sex'],
				'student_no' => $_POST['student_no'],
				'study_direction_id' => $_POST['study_direction_id'],
				'member_type_id' => $_POST['member_type_id'],
				'phone_num' => $_POST['phone_num'],
				'e_mail' => $_POST['e_mail'],
				'qq' => $_POST['qq'],
				'have_study_direction' => $_POST['have_study_direction'],
				'is_new' => $_POST['is_new'],
				'is_graduate' => $_POST['is_graduate'],

		);
		$arr1=array(
				'mem_name' => $_POST['mem_name'],
				'sex' => $_POST['sex'],
				'student_no' => $_POST['student_no'],
				'study_direction_id' => $_POST['study_direction_id'],
				'member_type_id' => $_POST['member_type_id'],
				'image' => $_POST['image'],
				'phone_num' => $_POST['phone_num'],
				'e_mail' => $_POST['e_mail'],
				'qq' => $_POST['qq'],
				'have_study_direction' => $_POST['have_study_direction'],
				'is_new' => $_POST['is_new'],
				'is_graduate' => $_POST['is_graduate'],

		);
		//dump($_POST);
		if(empty($_POST['image'])){
			$res=$this->where('mem_id='.$_POST['mem_id'])->save($arr);
		}else{
			$res=$this->where('mem_id='.$_POST['mem_id'])->save($arr1);
		}
		//dump($res);
		if($res){
			return 1;
		}else{
			return -1;
		}
	}
	/**
	 * 获取研发组成员信息
	 * @param: variable
	 * @return:
	 */
	public function GetResearchMember(){
		return $this->where('member_type_id=3')->select();
	}
	public function GetFiveResearchMember(){
		return $this->where('member_type_id=3')->limit(5)->select();
	}
	/**
	 * 获取项目经理信息
	 * @param: variable
	 * @return:
	 */
	public function GetManageMember(){
		return $this->where('member_type_id=4')->select();
	}
	/**
	 * 获取总负责人信息
	 * @param: variable
	 * @return:
	 */
	public function GetChargeMember(){
		return $this->where('member_type_id=5')->select();
	}
	/**
	 * 获取指导老师信息
	 * @param: variable
	 * @return:
	 */
	public function GetTeacherMember(){
		return $this->where('member_type_id=6')->select();
	}
	/**
	 * 修改指导老师信息
	 * @param: variable
	 * @return:
	 */
	public function ModifyTeacherMember($mem_id){
		return $res=$this->where('mem_id='.$mem_id)->select();

	}
	public function ModifyTeachermemberHandle(){
		$arr=array(
				'mem_name' => $_POST['mem_name'],
				'sex' => $_POST['sex'],
				'member_type_id' => $_POST['member_type_id'],
				'image' => $_POST['image'],
				'phone_num' => $_POST['phone_num'],
				'e_mail' => $_POST['e_mail'],
				'qq' => $_POST['qq'],

		);
		$res=$this->where('mem_id='.$_POST['mem_id'])->save($arr);
		//dump($res);
		if($res){
			return 1;
		}else{
			return -1;
		}
	}
	/**
	 * 添加老师负责人
	 * @param: variable
	 * @return:
	 */
	public function AddTeacherHandle(){
		$arr=array(
				'mem_name'=>$_POST['mem_name'],
				'sex'=>$_POST['sex'],
				'student_no'=>$_POST['student_no'],
				'phone_num'=>$_POST['phone_num'],
				'e_mail'=>$_POST['e_mail'],
				'qq'=>$_POST['qq'],
				'image'=>$_POST['image'],
				'have_study_direction'=>$_POST['have_study_direction'],
				'detail_info'=>$_POST['detail_info']

		);
		$res=$this->add($arr);
		if($res){
			return 1;
		}else{
			return -1;
		}
	}
	/**
	 * 获取已经毕业成员信息
	 * @param: variable
	 * @return:
	 */
	public function GetGraduateMember(){
		return $this->where('member_type_id=7')->select();
	}
	/**
	* 添加已经毕业成员信息处理
	* @param: variable
	* @return:
	*/
	public function AddGraduateMemberHandle(){
		$arr=array(
				'mem_name'=>$_POST['mem_name'],
				'sex'=>$_POST['sex'],
				'student_no'=>$_POST['student_no'],
				'study_direction_id'=>$_POST['study_direction_id'],
				'member_type_id'=>$_POST['member_type_id'],
				'phone_num'=>$_POST['phone_num'],
				'e_mail'=>$_POST['e_mail'],
				'qq'=>$_POST['qq'],
				'have_study_direction'=>$_POST['have_study_direction'],
				'is_new'=>$_POST['is_new'],
				'working_place'=>$_POST['working_place'],
				'salary'=>$_POST['salary'],
				'grade'=>$_POST['grade'],
				'after_project'=>$_POST['after_project'],
				'is_star'=>$_POST['is_star'],


		);
		$arr1=array(
				'mem_name'=>$_POST['mem_name'],
				'sex'=>$_POST['sex'],
				'student_no'=>$_POST['student_no'],
				'study_direction_id'=>$_POST['study_direction_id'],
				'member_type_id'=>$_POST['member_type_id'],
				'phone_num'=>$_POST['phone_num'],
				'e_mail'=>$_POST['e_mail'],
				'qq'=>$_POST['qq'],
				'have_study_direction'=>$_POST['have_study_direction'],
				'is_new'=>$_POST['is_new'],
				'working_place'=>$_POST['working_place'],
				'salary'=>$_POST['salary'],
				'grade'=>$_POST['grade'],
				'after_project'=>$_POST['after_project'],
				'image'=>$_POST['image'],
				'is_star'=>$_POST['is_star'],

		);
		//dump($_POST);
		if(empty($_POST['image'])){
			$res=$this->where('mem_id='.$_POST['mem_id'])->save($arr);
			//dump($res);
			if($res){
				return 1;
			}else{
				return -1;
			}
		}else{
			$res=$this->where('mem_id='.$_POST['mem_id'])->save($arr1);
			//dump($res);
			if($res){
				return 1;
			}else{
				return -1;
			}

		}
	}
	/**
	 * 修改成员信息
	 * @param: variable
	 * @return:
	 */
	public function ModifyGraduateMember($mem_id){

		return $res=$this->where('mem_id='.$mem_id)->select();

	}
	/**
	 * 修改信息确认
	 * @param: variable
	 * @return:
	 */
	public function ModifyGraduateMemberHandle(){
		$arr=array(
				'mem_name' => $_POST['mem_name'],
				'sex' => $_POST['sex'],
				'student_no' => $_POST['student_no'],
				'study_direction_id' => $_POST['study_direction_id'],
				'member_type_id' => $_POST['member_type_id'],

				'phone_num' => $_POST['phone_num'],
				'e_mail' => $_POST['e_mail'],
				'qq' => $_POST['qq'],
				'have_study_direction' => $_POST['have_study_direction'],
				'is_new' => $_POST['is_new'],
				'is_graduate' => $_POST['is_graduate'],
				'working_place'=>$_POST['working_place'],
				'working_job'=>$_POST['working_job'],
				'grade'=>$_POST['grade'],
				'after_project'=>$_POST['after_project'],
				'is_star'=>$_POST['is_star'],


		);
		$arr1=array(
				'mem_name' => $_POST['mem_name'],
				'sex' => $_POST['sex'],
				'student_no' => $_POST['student_no'],
				'study_direction_id' => $_POST['study_direction_id'],
				'member_type_id' => $_POST['member_type_id'],
				'image' => $_POST['image'],
				'phone_num' => $_POST['phone_num'],
				'e_mail' => $_POST['e_mail'],
				'qq' => $_POST['qq'],
				'have_study_direction' => $_POST['have_study_direction'],
				'is_new' => $_POST['is_new'],
				'is_graduate' => $_POST['is_graduate'],
				'working_place'=>$_POST['working_place'],
				'working_job'=>$_POST['working_job'],
				'grade'=>$_POST['grade'],
				'after_project'=>$_POST['after_project'],
				'is_star'=>$_POST['is_star'],


		);
		if(empty($_POST['image'])){
			//dump($_POST);
			$res=$this->where('mem_id='.$_POST['mem_id'])->save($arr);
			//dump($res);
			if($res){
				return 1;
			}else{
				return -1;
			}
		}else{
			$res=$this->where('mem_id='.$_POST['mem_id'])->save($arr1);
			//dump($res);
			if($res){
				return 1;
			}else{
				return -1;
			}
		}
	}
}
