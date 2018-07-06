import {Index,Entity, PrimaryColumn, Column, OneToOne, OneToMany, ManyToOne, ManyToMany, JoinColumn, JoinTable, RelationId} from "typeorm";
import {applicant} from "./Applicant";
import {considerationTypes} from "./ConsiderationTypes";
import {statusTypes} from "./StatusTypes";
import {education} from "./Education";
import {previousEmployer} from "./PreviousEmployer";
import {references} from "./References";
import {serviceRecord} from "./ServiceRecord";


@Entity("Application",{schema:"dbo"})
export class application {

    @Column("int",{ 
        generated:true,
        nullable:false,
        primary:true,
        name:"id"
        })
    id:number;
        

   
    @ManyToOne(type=>applicant, applicant=>applicant.applications,{  nullable:false, })
    @JoinColumn({ name:'ApplicantId'})
    applicant:applicant | null;


    @Column("datetime2",{ 
        nullable:false,
        default:"(getdate())",
        name:"ApplicationDate"
        })
    ApplicationDate:Date;
        

    @Column("varchar",{ 
        nullable:true,
        length:50,
        name:"Position"
        })
    Position:string | null;
        

   
    @ManyToOne(type=>considerationTypes, considerationTypes=>considerationTypes.applications,{  })
    @JoinColumn({ name:'Consideration'})
    consideration:considerationTypes | null;


   
    @ManyToOne(type=>statusTypes, statusTypes=>statusTypes.applications,{  })
    @JoinColumn({ name:'Status'})
    status:statusTypes | null;


    @Column("bit",{ 
        nullable:false,
        default:"((0))",
        name:"Hired"
        })
    Hired:boolean;
        

    @Column("bit",{ 
        nullable:true,
        default:"((0))",
        name:"PreviousApplication"
        })
    PreviousApplication:boolean | null;
        

    @Column("bit",{ 
        nullable:true,
        default:"((0))",
        name:"PreviousEmployment"
        })
    PreviousEmployment:boolean | null;
        

    @Column("bit",{ 
        nullable:true,
        default:"((0))",
        name:"PreviouslyTerminated"
        })
    PreviouslyTerminated:boolean | null;
        

    @Column("bit",{ 
        nullable:true,
        default:"((1))",
        name:"CanWork"
        })
    CanWork:boolean | null;
        

    @Column("nchar",{ 
        nullable:true,
        length:2,
        name:"DriversLicenseState"
        })
    DriversLicenseState:string | null;
        

    @Column("datetime2",{ 
        nullable:true,
        name:"AvailableDate"
        })
    AvailableDate:Date | null;
        

    @Column("bit",{ 
        nullable:false,
        default:"((0))",
        name:"OnCall"
        })
    OnCall:boolean;
        

    @Column("bit",{ 
        nullable:false,
        default:"((0))",
        name:"Temporary"
        })
    Temporary:boolean;
        

    @Column("bit",{ 
        nullable:false,
        default:"((0))",
        name:"Weekends"
        })
    Weekends:boolean;
        

    @Column("bit",{ 
        nullable:false,
        default:"((0))",
        name:"Evenings"
        })
    Evenings:boolean;
        

    @Column("bit",{ 
        nullable:false,
        default:"((0))",
        name:"Nights"
        })
    Nights:boolean;
        

    @Column("varchar",{ 
        nullable:true,
        length:256,
        name:"Referral"
        })
    Referral:string | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:512,
        name:"LeaveReason"
        })
    LeaveReason:string | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:128,
        name:"LastSupervisor"
        })
    LastSupervisor:string | null;
        

    @Column("datetime2",{ 
        nullable:true,
        name:"AuthorizationDate"
        })
    AuthorizationDate:Date | null;
        

    @Column("varbinary",{ 
        nullable:true,
        length:512,
        name:"Signature"
        })
    Signature:Buffer | null;
        

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
        nullable:true,
        default:"(getdate())",
        name:"ModifyDate"
        })
    ModifyDate:Date | null;
        

    @Column("varchar",{ 
        nullable:false,
        length:128,
        default:"(suser_sname())",
        name:"ModifyUser"
        })
    ModifyUser:string;
        

   
    @OneToMany(type=>education, education=>education.application)
    educations:education[];
    

   
    @OneToMany(type=>previousEmployer, previousEmployer=>previousEmployer.application)
    previousEmployers:previousEmployer[];
    

   
    @OneToMany(type=>references, references=>references.application)
    referencess:references[];
    

   
    @OneToMany(type=>serviceRecord, serviceRecord=>serviceRecord.application)
    serviceRecords:serviceRecord[];
    
    constructor(init?: Partial<application>) {
		Object.assign(this, init);
	}
}
