import {Index,Entity, PrimaryColumn, Column, OneToOne, OneToMany, ManyToOne, ManyToMany, JoinColumn, JoinTable, RelationId} from "typeorm";
import {applicant} from "./Applicant";
import {application} from "./Application";
import {address} from "./Address";
import {phone} from "./Phone";


@Entity("PreviousEmployer",{schema:"dbo"})
export class previousEmployer {

    @Column("int",{ 
        generated:true,
        nullable:false,
        primary:true,
        name:"id"
        })
    id:number;
        

   
    @ManyToOne(type=>applicant, applicant=>applicant.previousEmployers,{  nullable:false, })
    @JoinColumn({ name:'ApplicantId'})
    applicant:applicant | null;


   
    @ManyToOne(type=>application, application=>application.previousEmployers,{  })
    @JoinColumn({ name:'ApplicationId'})
    application:application | null;


    @Column("varchar",{ 
        nullable:false,
        length:128,
        name:"CompanyName"
        })
    CompanyName:string;
        

    @Column("datetime2",{ 
        nullable:false,
        name:"From"
        })
    From:Date;
        

    @Column("datetime2",{ 
        nullable:true,
        name:"To"
        })
    To:Date | null;
        

   
    @ManyToOne(type=>address, address=>address.previousEmployers,{  })
    @JoinColumn({ name:'AddressId'})
    address:address | null;


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
        

   
    @ManyToOne(type=>phone, phone=>phone.previousEmployers,{  })
    @JoinColumn({ name:'SupervisorPhoneId'})
    supervisorPhone:phone | null;


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
        
    constructor(init?: Partial<previousEmployer>) {
		Object.assign(this, init);
	}
}
