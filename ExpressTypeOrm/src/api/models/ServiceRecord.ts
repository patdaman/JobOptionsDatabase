import {Index,Entity, PrimaryColumn, Column, OneToOne, OneToMany, ManyToOne, ManyToMany, JoinColumn, JoinTable, RelationId} from "typeorm";
import {applicant} from "./Applicant";
import {application} from "./Application";


@Entity("ServiceRecord",{schema:"dbo"})
export class serviceRecord {

    @Column("int",{ 
        generated:true,
        nullable:false,
        primary:true,
        name:"id"
        })
    id:number;
        

   
    @ManyToOne(type=>applicant, applicant=>applicant.serviceRecords,{  nullable:false, })
    @JoinColumn({ name:'ApplicantId'})
    applicant:applicant | null;


   
    @ManyToOne(type=>application, application=>application.serviceRecords,{  })
    @JoinColumn({ name:'ApplicationId'})
    application:application | null;


    @Column("varchar",{ 
        nullable:false,
        length:50,
        name:"Branch"
        })
    Branch:string;
        

    @Column("datetime2",{ 
        nullable:true,
        name:"DischargeDate"
        })
    DischargeDate:Date | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:128,
        name:"DischargeRank"
        })
    DischargeRank:string | null;
        

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
        
    constructor(init?: Partial<serviceRecord>) {
		Object.assign(this, init);
	}
}
