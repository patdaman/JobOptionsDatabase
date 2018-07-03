import {Index,Entity, PrimaryColumn, Column, OneToOne, OneToMany, ManyToOne, ManyToMany, JoinColumn, JoinTable, RelationId} from "typeorm";
import {Applicant} from "./Applicant";
import {ConsiderationTypes} from "./ConsiderationTypes";
import {StatusTypes} from "./StatusTypes";
import {Address} from "./Address";
import {DisabledDocument} from "./DisabledDocument";
import {Education} from "./Education";
import {PreviousEmployer} from "./PreviousEmployer";
import {References} from "./References";


@Entity("Application",{schema:"dbo"})
export class Application {

    @Column("int",{ 
        generated:true,
        nullable:false,
        primary:true,
        name:"id"
        })
    id:number;
        

   
    @ManyToOne(type=>Applicant, Applicant=>Applicant.applications,{  nullable:false,onDelete: 'CASCADE',onUpdate: 'CASCADE' })
    @JoinColumn({ name:'ApplicantId'})
    applicant:Applicant | null;


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
        

   
    @ManyToOne(type=>ConsiderationTypes, ConsiderationTypes=>ConsiderationTypes.applications,{ onDelete: 'CASCADE',onUpdate: 'CASCADE' })
    @JoinColumn({ name:'Consideration'})
    consideration:ConsiderationTypes | null;


   
    @ManyToOne(type=>StatusTypes, StatusTypes=>StatusTypes.applications,{ onDelete: 'SET NULL',onUpdate: 'CASCADE' })
    @JoinColumn({ name:'Status'})
    status:StatusTypes | null;


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
        

   
    @OneToMany(type=>Address, Address=>Address.application)
    addresss:Address[];
    

   
    @OneToMany(type=>DisabledDocument, DisabledDocument=>DisabledDocument.application)
    disabledDocuments:DisabledDocument[];
    

   
    @OneToMany(type=>Education, Education=>Education.application)
    educations:Education[];
    

   
    @OneToMany(type=>PreviousEmployer, PreviousEmployer=>PreviousEmployer.application)
    previousEmployers:PreviousEmployer[];
    

   
    @OneToMany(type=>References, References=>References.application)
    referencess:References[];
    
}
