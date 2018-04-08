.class public Lcom/qihoo/util/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field public static ENABLE_CRASH_REPORT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/qihoo/util/Configuration;->ENABLE_CRASH_REPORT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
