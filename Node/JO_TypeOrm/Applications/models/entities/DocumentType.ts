import {Index,Entity, PrimaryColumn, Column, OneToOne, OneToMany, ManyToOne, ManyToMany, JoinColumn, JoinTable, RelationId} from "typeorm";
import {DisabledDocument} from "./DisabledDocument";


@Entity("DocumentType",{schema:"dbo"})
export class DocumentType {

    @Column("varchar",{ 
        nullable:false,
        length:50,
        primary:true,
        name:"Name"
        })
    Name:string;
        

    @Column("varchar",{ 
        nullable:true,
        length:256,
        name:"Description"
        })
    Description:string | null;
        

    @Column("bit",{ 
        nullable:false,
        default:"((1))",
        name:"Active"
        })
    Active:boolean;
        

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
        

   
    @OneToMany(type=>DisabledDocument, DisabledDocument=>DisabledDocument.documentType,{ onDelete: 'SET NULL' })
    disabledDocuments:DisabledDocument[];
    
}
