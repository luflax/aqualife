//GetAllTasksByRoom()
//arg0 room
var actualInstances = 0

switch(argument0){
	case fase2:
		actualInstances += instance_number(maquinalimpeza)
		break
	case fase3:
		actualInstances += instance_number(obj_alga)
		actualInstances += instance_number(obj_coral)
		break
	case fase4:
		actualInstances += instance_number(obj_turtle)
		actualInstances += instance_number(obj_baleia)
		actualInstances += instance_number(obj_lula)
		actualInstances += instance_number(obj_star)
		actualInstances += instance_number(obj_peixe_sinistro)
		break
}
return actualInstances
