import {Index,Entity, PrimaryColumn, Column, OneToOne, OneToMany, ManyToOne, ManyToMany, JoinColumn, JoinTable, RelationId} from "typeorm";
import {Applicant} from "./Applicant";
import {Application} from "./Application";
import {Address} from "./Address";
import {Phone} from "./Phone";


@Entity("PreviousEmployer",{schema:"dbo"})
export class PreviousEmployer {

    @Column("int",{ 
        generated:true,
        nullable:false,
        primary:true,
        name:"id"
        })
    id:number;
        

   
    @ManyToOne(type=>Applicant, Applicant=>Applicant.previousEmployers,{  nullable:false,onDelete: 'CASCADE',onUpdate: 'CASCADE' })
    @JoinColumn({ name:'ApplicantId'})
    applicant:Applicant | null;


   
    @ManyToOne(type=>Application, Application=>Application.previousEmployers,{  })
    @JoinColumn({ name:'ApplicationId'})
    application:Application | null;


    @Column("varchar",{ 
        nullable:false,
        length:128,
        name:"CompanyName"
        })
    CompanyName:string;
        

    @Column("datetime2",{ 
        nullable:false,
        name:"StartDate"
        })
    StartDate:Date;
        

    @Column("datetime2",{ 
        nullable:true,
        name:"EndDate"
        })
    EndDate:Date | null;
        

   
    @ManyToOne(type=>Address, Address=>Address.previousEmployers,{  })
    @JoinColumn({ name:'AddressId'})
    address:Address | null;


    @Column("varchar",{ 
        nullable:true,
        length:256,
        name:"Duties"
        })
    Duties:string | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:256,
        name:"SupervisorName"
        })
    SupervisorName:string | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:128,
        name:"SupervisorTitle"
        })
    SupervisorTitle:string | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:128,
        name:"SupervisorDepartment"
        })
    SupervisorDepartment:string | null;
        

   
    @ManyToOne(type=>Phone, Phone=>Phone.previousEmployers,{  })
    @JoinColumn({ name:'SupervisorPhoneId'})
    supervisorPhone:Phone | null;


    @Column("bit",{ 
        nullable:true,
        default:"((1))",
        name:"SupervisorContact"
        })
    SupervisorContact:boolean | null;
        

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
        
}
