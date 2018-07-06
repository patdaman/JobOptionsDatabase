import {Index,Entity, PrimaryColumn, Column, OneToOne, OneToMany, ManyToOne, ManyToMany, JoinColumn, JoinTable, RelationId} from "typeorm";
import {applicant} from "./Applicant";
import {phoneTypes} from "./PhoneTypes";
import {previousEmployer} from "./PreviousEmployer";


@Entity("Phone",{schema:"dbo"})
export class phone {

    @Column("int",{ 
        generated:true,
        nullable:false,
        primary:true,
        name:"id"
        })
    id:number;
        

   
    @ManyToOne(type=>applicant, applicant=>applicant.phones,{  nullable:false, })
    @JoinColumn({ name:'ApplicantId'})
    applicant:applicant | null;


   
    @ManyToOne(type=>phoneTypes, phoneTypes=>phoneTypes.phones,{  nullable:false, })
    @JoinColumn({ name:'PhoneType'})
    phoneType:phoneTypes | null;


    @Column("varchar",{ 
        nullable:false,
        length:50,
        name:"PhoneNumber"
        })
    PhoneNumber:string;
        

    @Column("varchar",{ 
        nullable:true,
        length:256,
        name:"Note"
        })
    Note:string | null;
        

    @Column("datetime2",{ 
        nullable:false,
        default:"(getdate())",
        name:"CreateDate"
        })
    CreateDate:Date;
        

    @Column("varchar",{ 
        nullable:false,
        length:128,
        default:"(suser_sname())",
        name:"CreateUser"
        })
    CreateUser:string;
        

    @Column("datetime2",{ 
        nullable:false,
        default:"(getdate())",
        name:"ModifyDate"
        })
    ModifyDate:Date;
        

    @Column("varchar",{ 
        nullable:false,
        length:128,
        default:"(suser_sname())",
        name:"ModifyUser"
        })
    ModifyUser:string;
        

   
    @OneToMany(type=>previousEmployer, previousEmployer=>previousEmployer.supervisorPhone)
    previousEmployers:previousEmployer[];
    
    constructor(init?: Partial<phone>) {
		Object.assign(this, init);
	}
}
