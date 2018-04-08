.class Lcom/qihoo/util/QHDialog$1$1;
.super Ljava/lang/Object;
.source "QHDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qihoo/util/QHDialog$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qihoo/util/QHDialog$1;


# direct methods
.method constructor <init>(Lcom/qihoo/util/QHDialog$1;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/qihoo/util/QHDialog$1$1;->this$0:Lcom/qihoo/util/QHDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 24
    monitor-enter v1

    .line 25
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 27
    :cond_0
    monitor-exit v1

    .line 28
    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
