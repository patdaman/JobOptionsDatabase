import {Index,Entity, PrimaryColumn, Column, OneToOne, OneToMany, ManyToOne, ManyToMany, JoinColumn, JoinTable, RelationId} from "typeorm";
import {applicant} from "./Applicant";
import {application} from "./Application";


@Entity("References",{schema:"dbo"})
export class references {

    @Column("int",{ 
        generated:true,
        nullable:false,
        primary:true,
        name:"id"
        })
    id:number;
        

   
    @ManyToOne(type=>applicant, applicant=>applicant.referencess,{  nullable:false, })
    @JoinColumn({ name:'ApplicantId'})
    applicant:applicant | null;


   
    @ManyToOne(type=>application, application=>application.referencess,{  })
    @JoinColumn({ name:'ApplicationId'})
    application:application | null;


    @Column("varchar",{ 
        nullable:false,
        length:256,
        name:"Name"
        })
    Name:string;
        

    @Column("varchar",{ 
        nullable:true,
        length:512,
        name:"Address"
        })
    Address:string | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:256,
        name:"Business"
        })
    Business:string | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:50,
        name:"YearsAcquainted"
        })
    YearsAcquainted:string | null;
        

    @Column("datetime2",{ 
        nullable:false,
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
        
    constructor(init?: Partial<references>) {
		Object.assign(this, init);
	}
}
